fucntion kprox() {
  ssh -L 9443:api.k8s-aleph-1.tulipintra.net:443 -fN deploy
}

function kuse() {
  kubectl config use-context $1
}
