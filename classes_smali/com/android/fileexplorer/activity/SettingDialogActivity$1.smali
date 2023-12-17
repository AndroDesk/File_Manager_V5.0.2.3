.class Lcom/android/fileexplorer/activity/SettingDialogActivity$1;
.super Ljava/lang/Object;
.source "SettingDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/SettingDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/SettingDialogActivity;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/activity/SettingDialogActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/SettingDialogActivity$1;->this$0:Lcom/android/fileexplorer/activity/SettingDialogActivity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/activity/SettingDialogActivity$1;->this$0:Lcom/android/fileexplorer/activity/SettingDialogActivity;

    .line 3
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 6
    return-void
.end method
