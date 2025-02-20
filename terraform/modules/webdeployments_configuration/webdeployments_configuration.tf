/*
  Creates the messaging configuration
*/
resource "genesyscloud_webdeployments_configuration" "Message_Configuration_for_Sending_Copy_of_Transcript_by_Email" {
  name             = "Message Configuration for Sending Copy of Transcript by Email"
  languages        = ["en-us"]
  default_language = "en-us"
  status = "Active"
  messenger {
    styles {
      primary_color = "#0D6EFD"
    }
    enabled = true
    file_upload {
      mode {
        file_types       = ["image/jpeg", "image/gif", "image/png"]
        max_file_size_kb = 10240
      }
    }
    home_screen {
      enabled = false
    }
    launcher_button {
      visibility = "On"
    }
  }
  cobrowse {
    allow_agent_control = true
    enabled             = false
  }
  journey_events {
    enabled                  = false
    should_keep_url_fragment = false
  }
}