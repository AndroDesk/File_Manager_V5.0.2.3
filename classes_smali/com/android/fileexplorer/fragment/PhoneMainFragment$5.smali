.class Lcom/android/fileexplorer/fragment/PhoneMainFragment$5;
.super Ljava/lang/Object;
.source "PhoneMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/PhoneMainFragment;->handleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/PhoneMainFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$5;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$5;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 8
    invoke-static {v1}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lmiuix/navigator/Navigator;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    .line 18
    if-ne v1, v2, :cond_15

    .line 20
    const/4 v1, 0x1

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 v1, 0x0

    .line 23
    :goto_16
    const-string v2, "bundle_key_istobackstack"

    .line 25
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 28
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/PhoneMainFragment$5;->this$0:Lcom/android/fileexplorer/fragment/PhoneMainFragment;

    .line 30
    invoke-static {v1}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    .line 36
    const/16 v3, 0x3eb

    .line 38
    const-class v4, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;

    .line 40
    invoke-direct {v2, v3, v4, v0}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {v1, v2}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 46
    return-void
.end method
