program vsfm_spac_mms
  !
#include <petsc/finclude/petsc.h>
  !
  use vsfm_spac_mms_problem, only : run_vsfm_spac_mms_problem
  use petscsys
  !
  implicit none
  !
  PetscErrorCode     :: ierr
  
  call PetscInitialize(PETSC_NULL_CHARACTER,ierr)

  PETSC_COMM_WORLD = MPI_COMM_WORLD
  PETSC_COMM_SELF  = MPI_COMM_SELF

  call run_vsfm_spac_mms_problem()

  call PetscFinalize(ierr)

end program vsfm_spac_mms
