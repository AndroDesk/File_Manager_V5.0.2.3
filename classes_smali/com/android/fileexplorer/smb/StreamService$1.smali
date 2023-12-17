.class Lcom/android/fileexplorer/smb/StreamService$1;
.super Ljava/lang/Object;
.source "StreamService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/smb/StreamService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/smb/StreamService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/smb/StreamService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    invoke-static {v0}, Lcom/android/fileexplorer/smb/StreamService;->access$000(Lcom/android/fileexplorer/smb/StreamService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Server Socket is Created, waiting for client to connect"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    iget-object v0, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    invoke-static {v0}, Lcom/android/fileexplorer/smb/StreamService;->access$100(Lcom/android/fileexplorer/smb/StreamService;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    invoke-static {v1}, Lcom/android/fileexplorer/smb/StreamService;->access$000(Lcom/android/fileexplorer/smb/StreamService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client connected to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", start HttpSession"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    invoke-static {v1}, Lcom/android/fileexplorer/smb/StreamService;->access$200(Lcom/android/fileexplorer/smb/StreamService;)Lcom/android/fileexplorer/smb/HTTPSession;

    move-result-object v1

    if-eqz v1, :cond_7d

    iget-object v1, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    invoke-static {v1}, Lcom/android/fileexplorer/smb/StreamService;->access$200(Lcom/android/fileexplorer/smb/StreamService;)Lcom/android/fileexplorer/smb/HTTPSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/smb/HTTPSession;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_7d

    iget-object v1, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    invoke-static {v1}, Lcom/android/fileexplorer/smb/StreamService;->access$000(Lcom/android/fileexplorer/smb/StreamService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Previous HttpSession is detected, try to stop it"

    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    invoke-static {v1}, Lcom/android/fileexplorer/smb/StreamService;->access$200(Lcom/android/fileexplorer/smb/StreamService;)Lcom/android/fileexplorer/smb/HTTPSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/smb/HTTPSession;->stop()V

    :goto_60
    iget-object v1, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    invoke-static {v1}, Lcom/android/fileexplorer/smb/StreamService;->access$200(Lcom/android/fileexplorer/smb/StreamService;)Lcom/android/fileexplorer/smb/HTTPSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/smb/HTTPSession;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_72

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_60

    :cond_72
    iget-object v1, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    invoke-static {v1}, Lcom/android/fileexplorer/smb/StreamService;->access$000(Lcom/android/fileexplorer/smb/StreamService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Previous HttpSession is stopped"

    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7d
    iget-object v1, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    new-instance v2, Lcom/android/fileexplorer/smb/HTTPSession;

    iget-object v3, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    invoke-direct {v2, v3, v0}, Lcom/android/fileexplorer/smb/HTTPSession;-><init>(Lcom/android/fileexplorer/smb/StreamService;Ljava/net/Socket;)V

    invoke-static {v1, v2}, Lcom/android/fileexplorer/smb/StreamService;->access$202(Lcom/android/fileexplorer/smb/StreamService;Lcom/android/fileexplorer/smb/HTTPSession;)Lcom/android/fileexplorer/smb/HTTPSession;

    iget-object v0, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    invoke-static {v0}, Lcom/android/fileexplorer/smb/StreamService;->access$000(Lcom/android/fileexplorer/smb/StreamService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpSession is started"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_94} :catch_a5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_94} :catch_96

    goto/16 :goto_b

    :catch_96
    move-exception v0

    iget-object v1, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    invoke-static {v1}, Lcom/android/fileexplorer/smb/StreamService;->access$000(Lcom/android/fileexplorer/smb/StreamService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b3

    :catch_a5
    move-exception v0

    iget-object v1, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    invoke-static {v1}, Lcom/android/fileexplorer/smb/StreamService;->access$000(Lcom/android/fileexplorer/smb/StreamService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b3
    return-void
.end method
