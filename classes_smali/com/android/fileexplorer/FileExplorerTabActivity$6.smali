.class Lcom/android/fileexplorer/FileExplorerTabActivity$6;
.super Ljava/lang/Object;
.source "FileExplorerTabActivity.java"

# interfaces
.implements Lcom/android/fileexplorer/controller/IntentBuilder$ViewFileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileExplorerTabActivity;->handleWidgetIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$6;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Ljava/lang/String;)V
    .registers 4

    new-instance p1, Lcom/android/fileexplorer/FileExplorerTabActivity$6$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$6$1;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity$6;)V

    const-wide/16 v0, 0x96

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    return-void
.end method
