.PHONY: zip

zip: service.sh module.prop
	zip -r TurnOffSensors-Magisk.zip META-INF module.prop service.sh