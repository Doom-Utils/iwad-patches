//
// Simple tool for enabling/disabling the date check on startup, and the
// blinking "BETA" text in Hexen "retail store" beta binary
//
// can be compiled with Open Watcom v1.9 for 16-bit or 32-bit DOS target
//

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

typedef uint8_t byte;

#define BETA_EXE_LEN 918399L

#define TIME_PATCH_POS 0x59839L
#define BLINK_PATCH_POS 0x5A626L

#define TIME_PATCH_LEN 8
#define BLINK_PATCH_LEN 7

const byte *time_old = "\x83\xEC\x28\x31\xC0\x8D\x55\xD8";
const byte *time_new = "\xEB\x3C\x28\x31\xC0\x8D\x55\xD8";

const byte *blink_old = "\x74\x22\xB8\xC0\x27\x00\x00";
const byte *blink_new = "\xEB\x22\xB8\xC0\x27\x00\x00";

const char *endisstr[2] = { "enabled", "disabled" };

byte comparebuf[8];

int main (int argc, char **argv)
{
  int diff;
  uint32_t length;
  char *exename;
  FILE *fp;
  int disable_date_check, disable_blinker;

  printf("\n"\
         "Hexen: Beyond Heretic \"retail store beta\" crack\n"\
         "by xttl@dwf, built on " __DATE__ " " __TIME__ " EET\n"\
         "\n");

  if (argc < 2)
  {
    printf("usage: hexbcrak <exefile> [disable_date_check] [disable_blinker]\n"\
           "\n"\
           "For example, type \"hexbcrak beta.exe 1 1\" to remove both the date check\n"\
           "and the blinking \"BETA\" text from beta.exe.\n"\
           "\n"
           "Default is to remove date check and retain blinking \"BETA\" text (equivalent\n"\
           "to \"hexbcrak beta.exe 1 0\").\n"\
           "\n"
           "You can also restore the date check or the blinker using this program and\n"\
           "entering 0 as either parameter.\n");

    return -1;
  }

  exename = argv[1];

  fp = fopen(exename, "rb+");
  if (!fp)
  {
    printf("Can't open file \"%s\"\n", exename);
    return -1;
  }

  fseek (fp, 0, SEEK_END);
  length = ftell(fp);
  fseek (fp, 0, SEEK_SET);

  if (length != BETA_EXE_LEN)
  {
    printf("File \"%s\" is not %li bytes (not a Hexen beta binary?)\n",
     exename, BETA_EXE_LEN);

    return -1;
  }

  if (argc >= 3)
    disable_date_check = atoi(argv[2]);
  else
    disable_date_check = 1;

  if (argc >= 4)
    disable_blinker = atoi(argv[3]);
  else
    disable_blinker = 0;


  fseek(fp, TIME_PATCH_POS, SEEK_SET);
  fread(comparebuf, 1, TIME_PATCH_LEN, fp);

  if (memcmp(comparebuf,time_old,TIME_PATCH_LEN) && memcmp(comparebuf,time_new,TIME_PATCH_LEN))
  {
    printf("Unexpected values found at 0x%lX (not a Hexen beta binary?)\n", TIME_PATCH_POS);
    return -1;
  }

  fseek(fp, BLINK_PATCH_POS, SEEK_SET);
  fread(comparebuf, 1, BLINK_PATCH_LEN, fp);

  if (memcmp(comparebuf,blink_old,BLINK_PATCH_LEN) && memcmp(comparebuf,blink_new,BLINK_PATCH_LEN))
  {
    printf("Unexpected values found at 0x%lX (not a Hexen beta binary?)\n", BLINK_PATCH_POS);
    return -1;
  }


  fseek(fp, TIME_PATCH_POS, SEEK_SET);
  if (disable_date_check)
    fwrite(time_new, 1, TIME_PATCH_LEN, fp);
  else
    fwrite(time_old, 1, TIME_PATCH_LEN, fp);


  fseek(fp, BLINK_PATCH_POS, SEEK_SET);
  if (disable_blinker)
    fwrite(blink_new, 1, BLINK_PATCH_LEN, fp);
  else
    fwrite(blink_old, 1, BLINK_PATCH_LEN, fp);


  fclose(fp);

  printf ("Done. Date check is %s, \"BETA\" blinker is %s.\n",
   endisstr[disable_date_check], endisstr[disable_blinker]);

  return 0;
}
