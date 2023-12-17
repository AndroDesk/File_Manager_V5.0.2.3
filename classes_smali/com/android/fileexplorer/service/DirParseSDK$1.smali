.class Lcom/android/fileexplorer/service/DirParseSDK$1;
.super Ljava/lang/Object;
.source "DirParseSDK.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/service/DirParseSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/service/DirParseSDK;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/service/DirParseSDK;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/service/DirParseSDK$1;->this$0:Lcom/android/fileexplorer/service/DirParseSDK;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/service/DirParseSDK$1;->this$0:Lcom/android/fileexplorer/service/DirParseSDK;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/service/DirParseSDK;->access$000(Lcom/android/fileexplorer/service/DirParseSDK;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    const-string v0, "dirparse service connected"

    .line 9
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/service/DirParseSDK$1;->this$0:Lcom/android/fileexplorer/service/DirParseSDK;

    .line 14
    invoke-static {p2}, Lcom/android/fileexplorer/service/IDirParse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/fileexplorer/service/IDirParse;

    .line 17
    move-result-object p2

    .line 18
    invoke-static {p1, p2}, Lcom/android/fileexplorer/service/DirParseSDK;->access$102(Lcom/android/fileexplorer/service/DirParseSDK;Lcom/android/fileexplorer/service/IDirParse;)Lcom/android/fileexplorer/service/IDirParse;

    .line 21
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/service/DirParseSDK$1;->this$0:Lcom/android/fileexplorer/service/DirParseSDK;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/service/DirParseSDK;->access$000(Lcom/android/fileexplorer/service/DirParseSDK;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    const-string v0, "dirparse service disconnected"

    .line 9
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/service/DirParseSDK$1;->this$0:Lcom/android/fileexplorer/service/DirParseSDK;

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {p1, v0}, Lcom/android/fileexplorer/service/DirParseSDK;->access$102(Lcom/android/fileexplorer/service/DirParseSDK;Lcom/android/fileexplorer/service/IDirParse;)Lcom/android/fileexplorer/service/IDirParse;

    .line 18
    return-void
.end method
