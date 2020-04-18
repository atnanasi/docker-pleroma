use Mix.Config

config :pleroma, Pleroma.Web.Endpoint,
   url: [host: "pl-next.ggrel.net", scheme: "https", port: 443],
   http: [ip: {0, 0, 0, 0}, port: 4000]

config :logger, level: :info

config :pleroma, :instance,
  name: "Pleroma Next",
  email: "ys2000pro+next@gmail.com",
  description: "Pleroma instance for a neophilia",
  account_activation_required: true,
  finmoji_enabled: false,
  limit: 5000,
  registrations_open: true,
  rewrite_policy: Pleroma.Web.ActivityPub.MRF.SimplePolicy

config :pleroma, :mrf_simple,
  media_removal: ["mstdn.jp"]

config :pleroma, Oban,
  queues: [
    federator_incoming: 200,
    federator_outgoing: 200,
    web_push: 50,
    mailer: 10,
    transmogrifier: 20,
    scheduled_activities: 100,
    background: 50
  ]

import_config "keys.secret.exs"

