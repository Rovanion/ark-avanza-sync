(use-modules (guix build-system python)
						 (guix download)
						 (guix packages)
						 ((guix licenses) #:prefix license:)
						 (gnu packages python)
						 (gnu packages python-crypto)
						 (gnu packages python-web))

(define-public python-avanza-api
	(package
		(name "python-avanza-api")
		(version "2.4.0")
		(source
		 (origin
			 (method url-fetch)
			 (uri (pypi-uri "avanza-api" version))
			 (sha256
				(base32
				 "07543n2n64wb0h6m5wz99d5jr9cwhsfzkbyfak8vrhpma1zwcfls"))))
		(build-system python-build-system)
		(propagated-inputs
		 `(("python-pyotp" ,python-pyotp)
			 ("python-requests" ,python-requests)
			 ("python-websockets" ,python-websockets)))
		(home-page "https://github.com/Qluxzz/avanza")
		(synopsis
		 "A Python library for the unofficial Avanza API")
		(description
		 "A Python library for the unofficial Avanza API")
	  (license license:expat)))

(list python-wrapper python-avanza-api)
