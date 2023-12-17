.class Lcom/android/fileexplorer/activity/ViewLargeActivity$4;
.super Ljava/lang/Object;
.source "ViewLargeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/ViewLargeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$4;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$4;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->isPasswordSet(Landroid/app/Activity;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_d

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$4;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$900(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V

    .line 14
    :cond_d
    return-void
.end method
