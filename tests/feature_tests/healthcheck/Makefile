M3PATH := "$(dirname "$(readlink -f "${0}")")../../../"
export CONTROL_PLANE_MACHINE_COUNT := 3
export WORKER_MACHINE_COUNT := 1

all: provision healthcheck deprovision 

provision:
	$(M3PATH)/tests/feature_tests/feature_test_provisioning.sh

healthcheck:
	./healthcheck.sh

deprovision:
	$(M3PATH)/tests/feature_tests/feature_test_deprovisioning.sh
