# Vidcapi

**TODO: Add description**

sudo apt-get install libswscale-dev

{:ok, uvc} = :uvc.open([{:device, 0}, {:debug, true}, {:size, {640,480}}, {:fps, 20}])

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add vidcapi to your list of dependencies in `mix.exs`:

        def deps do
          [{:vidcapi, "~> 0.0.1"}]
        end

  2. Ensure vidcapi is started before your application:

        def application do
          [applications: [:vidcapi]]
        end

