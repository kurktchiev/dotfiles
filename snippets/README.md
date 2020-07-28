# Breakdown of snippets available in the directory

NOTE: Anywhere you see `【key:↩ code:36】` or similar, simply means that it will automatically hit enter, or insert the cursor within the pasted text.

## git
;gc
`git checkout 【|】`

;gs
`git status【key:↩ code:36】`

;gf
`git fetch【key:↩ code:36】`

;gmr
`upstream=【field:upstream r2 value:upstream editable】; git fetch $upstream; git rebase $upstream/master`


## helm
;hl
`helm list【key:↩ code:36】 `

;hd
`helm delete `

## Simple subsitutions
@@
`your@personal.email.com`

@ww
`your@work.email.com`

## kubectl
;kn
`kubectl get ns 【key:↩ code:36】`

;kl
`kubectl logs 【|】`

;kroll
`printf '{"spec":{"template":{"metadata":{"labels":{"date":"%s"}}}}}' `date +%s` | xargs -0 kubectl patch deployment 【|】 -p`

;kp
`kubectl get pods -o wide【key:↩ code:36】`

;kaw
`kubectl get pods --all-namespaces -o wide【key:↩ code:36】`

;kx
`kubectl exec -it 【|】 -- /bin/bash`

;kd
`kubectl delete 【|】`

;kfd
`kubectl delete --force --grace-period=0 【|】`

;kfl
`kubectl logs -f 【|】`

;ksx
`kubectl exec -it 【|】 -- /bin/sh`

;kc
`kubectl create -f 【|】`

## Misc terminal
;grp
`grep -ri 【|】* * | less`

;su
`sudo /bin/bash【key:↩ code:36】`

;ps
`ps -ef | grep -i 【|】*`

;dsrc
`cd ~/Sources/Diamanti【key:↩ code:36】`

;c
`【clipboard】`

;mux
`tmuxinator start default【key:↩ code:36】`

;up
`brew update; brew upgrade; brew cask upgrade; brew cleanup; gem update; gem cleanup; brew bundle dump --force --file=~/Dropbox/Brewfile; upgrade_oh_my_zsh【key:↩ code:36】`
