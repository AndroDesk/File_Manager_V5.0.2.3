.class Lcom/android/fileexplorer/fragment/PhoneMainFragment$2;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$2;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .registers 2

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$2;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->access$000(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$2;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->access$100(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)V

    :cond_d
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneMainFragment$2;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
