.class Lcom/android/fileexplorer/activity/ServerControlActivity$5;
.super Ljava/lang/Object;
.source "ServerControlActivity.java"

# interfaces
.implements Lcom/android/fileexplorer/view/preference/AccountPreferenceDialogUtil$OnAccountChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/ServerControlActivity;->showInputFTPAccountDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/ServerControlActivity;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/activity/ServerControlActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity$5;->this$0:Lcom/android/fileexplorer/activity/ServerControlActivity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAccountChange(Z)V
    .registers 2

    .line 1
    if-eqz p1, :cond_7

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity$5;->this$0:Lcom/android/fileexplorer/activity/ServerControlActivity;

    .line 5
    invoke-static {p1}, Lcom/android/fileexplorer/activity/ServerControlActivity;->access$200(Lcom/android/fileexplorer/activity/ServerControlActivity;)V

    .line 8
    :cond_7
    return-void
.end method
