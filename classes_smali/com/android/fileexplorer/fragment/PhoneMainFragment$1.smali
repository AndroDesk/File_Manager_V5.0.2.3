.class Lcom/android/fileexplorer/fragment/PhoneMainFragment$1;
.super Ljava/lang/Object;
.source "PhoneMainFragment.java"

# interfaces
.implements Landroidx/lifecycle/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/PhoneMainFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/r<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$1;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChanged(Landroid/content/Intent;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$1;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->handleIntent(Landroid/content/Intent;)V

    :cond_7
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment$1;->onChanged(Landroid/content/Intent;)V

    return-void
.end method
