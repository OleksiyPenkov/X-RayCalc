unit unit_consts;

interface

const

  CurrentProjectVersion = 1;

  MODEL_FILE_EXT = '.bin';
  PARAMETERS_FILE_NAME = 'params.dsc';
  PROJECT_FILE_NAME = 'project.dsc';
  APP_HELP_FILENAME = 'xrc.chm';

  RM : array [0.. 7] of string = (
          'Trial period is expiried! Please order the license on http:\\sci-progs.com',
          'This is evaluation version of X-Ray Calc.  %d days of trial period left.',
          'Registered',
          'Unregistered version',
          'Trial version',
          'Registration complete. Thank you!',
          'Registration data is not correct!',
          'Якщо ви украњнець, над≥шл≥ть запит на sale@sci-progs.com ≥ отримаЇте л≥ценз≥йний ключ безкоштовно!'
           );

resourcestring
  rstrRError = 'Wrong registration data! Program will be stoped';
  rstrROK = 'X-Ray Calc is registered now.';



implementation

end.
