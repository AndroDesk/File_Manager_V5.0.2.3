.class Lcom/android/fileexplorer/PhoneMainActivityProxy$1;
.super Ljava/lang/Object;
.source "PhoneMainActivityProxy.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/listener/OnEmptyTrigger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/PhoneMainActivityProxy;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/PhoneMainActivityProxy;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/PhoneMainActivityProxy;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$1;->this$0:Lcom/android/fileexplorer/PhoneMainActivityProxy;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDeActive()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$1;->this$0:Lcom/android/fileexplorer/PhoneMainActivityProxy;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 5
    if-eqz v0, :cond_b

    .line 7
    check-cast v0, Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 9
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onDeActiveEmptyView()V

    .line 12
    :cond_b
    return-void
.end method

.method public onReverse()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/PhoneMainActivityProxy$1;->this$0:Lcom/android/fileexplorer/PhoneMainActivityProxy;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/PhoneMainActivityProxy;->mCurrentFragment:Lmiuix/appcompat/app/Fragment;

    .line 5
    if-eqz v0, :cond_b

    .line 7
    check-cast v0, Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 9
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->reverseEmptyViewState()V

    .line 12
    :cond_b
    return-void
.end method
