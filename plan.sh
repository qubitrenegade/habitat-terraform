# This file is the heart of your application's habitat.
# See full docs at https://www.habitat.sh/docs/reference/plan-syntax/
pkg_name=terraform
pkg_origin=qubitrenegade
pkg_version="0.11.7"
pkg_maintainer="QubitRenegade <qubitrenegade@gmail.com>"
pkg_license=("MPL-2")
pkg_source="https://releases.hashicorp.com/${pkg_name}/${pkg_version}/${pkg_name}_${pkg_version}_linux_amd64.zip"
pkg_filename=${pkg_name}-${pkg_version}_linux_amd64.zip
pkg_shasum="6b8ce67647a59b2a3f70199c304abca0ddec0e49fd060944c26f666298e23418"
pkg_deps=()
pkg_build_deps=(core/unzip)
pkg_bin_dirs=(bin)
pkg_description="Habitat plan for Terraform; https://github.com/qubitrenegade/habitat-terraform"
pkg_upstream_url="https://www.terraform.io"

do_unpack() {
  cd "${HAB_CACHE_SRC_PATH}" || exit
  unzip ${pkg_filename} -d "${pkg_name}-${pkg_version}"
}

do_build() {
  return 0
}

do_install() {
  install -D terraform "${pkg_prefix}/bin/terraform"
}
