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
.method public constructor <init>(Lcom/android/fileexplorer/smb/StreamService;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/smb/StreamService;->access$000(Lcom/android/fileexplorer/smb/StreamService;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Server Socket is Created, waiting for client to connect"

    .line 9
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :goto_b
    iget-object v0, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    .line 14
    invoke-static {v0}, Lcom/android/fileexplorer/smb/StreamService;->access$100(Lcom/android/fileexplorer/smb/StreamService;)Ljava/net/ServerSocket;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    .line 24
    invoke-static {v1}, Lcom/android/fileexplorer/smb/StreamService;->access$000(Lcom/android/fileexplorer/smb/StreamService;)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    const-string v3, "client connected to "

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    .line 41
    move-result v3

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v3, ", start HttpSession"

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    .line 59
    invoke-static {v1}, Lcom/android/fileexplorer/smb/StreamService;->access$200(Lcom/android/fileexplorer/smb/StreamService;)Lcom/android/fileexplorer/smb/HTTPSession;

    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_7d

    .line 65
    iget-object v1, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    .line 67
    invoke-static {v1}, Lcom/android/fileexplorer/smb/StreamService;->access$200(Lcom/android/fileexplorer/smb/StreamService;)Lcom/android/fileexplorer/smb/HTTPSession;

    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/android/fileexplorer/smb/HTTPSession;->isRunning()Z

    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_7d

    .line 77
    iget-object v1, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    .line 79
    invoke-static {v1}, Lcom/android/fileexplorer/smb/StreamService;->access$000(Lcom/android/fileexplorer/smb/StreamService;)Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    const-string v2, "Previous HttpSession is detected, try to stop it"

    .line 85
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    .line 90
    invoke-static {v1}, Lcom/android/fileexplorer/smb/StreamService;->access$200(Lcom/android/fileexplorer/smb/StreamService;)Lcom/android/fileexplorer/smb/HTTPSession;

    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lcom/android/fileexplorer/smb/HTTPSession;->stop()V

    .line 97
    :goto_60
    iget-object v1, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    .line 99
    invoke-static {v1}, Lcom/android/fileexplorer/smb/StreamService;->access$200(Lcom/android/fileexplorer/smb/StreamService;)Lcom/android/fileexplorer/smb/HTTPSession;

    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lcom/android/fileexplorer/smb/HTTPSession;->isRunning()Z

    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_72

    .line 109
    const-wide/16 v1, 0x1f4

    .line 111
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 114
    goto :goto_60

    .line 115
    :cond_72
    iget-object v1, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    .line 117
    invoke-static {v1}, Lcom/android/fileexplorer/smb/StreamService;->access$000(Lcom/android/fileexplorer/smb/StreamService;)Ljava/lang/String;

    .line 120
    move-result-object v1

    .line 121
    const-string v2, "Previous HttpSession is stopped"

    .line 123
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_7d
    iget-object v1, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    .line 128
    new-instance v2, Lcom/android/fileexplorer/smb/HTTPSession;

    .line 130
    iget-object v3, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    .line 132
    invoke-direct {v2, v3, v0}, Lcom/android/fileexplorer/smb/HTTPSession;-><init>(Lcom/android/fileexplorer/smb/StreamService;Ljava/net/Socket;)V

    .line 135
    invoke-static {v1, v2}, Lcom/android/fileexplorer/smb/StreamService;->access$202(Lcom/android/fileexplorer/smb/StreamService;Lcom/android/fileexplorer/smb/HTTPSession;)Lcom/android/fileexplorer/smb/HTTPSession;

    .line 138
    iget-object v0, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    .line 140
    invoke-static {v0}, Lcom/android/fileexplorer/smb/StreamService;->access$000(Lcom/android/fileexplorer/smb/StreamService;)Ljava/lang/String;

    .line 143
    move-result-object v0

    .line 144
    const-string v1, "HttpSession is started"

    .line 146
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_94} :catch_a5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_94} :catch_96

    .line 149
    goto/16 :goto_b

    .line 151
    :catch_96
    move-exception v0

    .line 152
    iget-object v1, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    .line 154
    invoke-static {v1}, Lcom/android/fileexplorer/smb/StreamService;->access$000(Lcom/android/fileexplorer/smb/StreamService;)Ljava/lang/String;

    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 161
    move-result-object v0

    .line 162
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    goto :goto_b3

    .line 166
    :catch_a5
    move-exception v0

    .line 167
    iget-object v1, p0, Lcom/android/fileexplorer/smb/StreamService$1;->this$0:Lcom/android/fileexplorer/smb/StreamService;

    .line 169
    invoke-static {v1}, Lcom/android/fileexplorer/smb/StreamService;->access$000(Lcom/android/fileexplorer/smb/StreamService;)Ljava/lang/String;

    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 176
    move-result-object v0

    .line 177
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_b3
    return-void
.end method
