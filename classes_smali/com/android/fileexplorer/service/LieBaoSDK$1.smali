.class Lcom/android/fileexplorer/service/LieBaoSDK$1;
.super Ljava/lang/Object;
.source "LieBaoSDK.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/service/LieBaoSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/service/LieBaoSDK;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/service/LieBaoSDK;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/service/LieBaoSDK$1;->this$0:Lcom/android/fileexplorer/service/LieBaoSDK;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/service/LieBaoSDK$1;->this$0:Lcom/android/fileexplorer/service/LieBaoSDK;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/service/LieBaoSDK;->access$000(Lcom/android/fileexplorer/service/LieBaoSDK;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    const-string v0, "liebao service connected"

    .line 9
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/service/LieBaoSDK$1;->this$0:Lcom/android/fileexplorer/service/LieBaoSDK;

    .line 14
    invoke-static {p2}, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/IKSCleaner;

    .line 17
    move-result-object p2

    .line 18
    invoke-static {p1, p2}, Lcom/android/fileexplorer/service/LieBaoSDK;->access$102(Lcom/android/fileexplorer/service/LieBaoSDK;Lcom/cleanmaster/sdk/IKSCleaner;)Lcom/cleanmaster/sdk/IKSCleaner;

    .line 21
    :try_start_14
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result p2

    .line 37
    const/4 v0, 0x0

    .line 38
    if-nez p2, :cond_3d

    .line 40
    const-string p2, "_"

    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    array-length p2, p1

    .line 47
    const/4 v1, 0x0

    .line 48
    const/4 v2, 0x1

    .line 49
    if-le p2, v2, :cond_37

    .line 51
    aget-object v0, p1, v1

    .line 53
    aget-object p1, p1, v2

    .line 55
    goto :goto_3e

    .line 56
    :cond_37
    aget-object p1, p1, v1

    .line 58
    move-object v3, v0

    .line 59
    move-object v0, p1

    .line 60
    move-object p1, v3

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    move-object p1, v0

    .line 63
    :goto_3e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    move-result p2

    .line 67
    if-eqz p2, :cond_46

    .line 69
    const-string v0, "en"

    .line 71
    :cond_46
    iget-object p2, p0, Lcom/android/fileexplorer/service/LieBaoSDK$1;->this$0:Lcom/android/fileexplorer/service/LieBaoSDK;

    .line 73
    invoke-static {p2}, Lcom/android/fileexplorer/service/LieBaoSDK;->access$100(Lcom/android/fileexplorer/service/LieBaoSDK;)Lcom/cleanmaster/sdk/IKSCleaner;

    .line 76
    move-result-object p2

    .line 77
    invoke-interface {p2, v0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->init(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_4f} :catch_50

    .line 80
    goto :goto_54

    .line 81
    :catch_50
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    :goto_54
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/service/LieBaoSDK$1;->this$0:Lcom/android/fileexplorer/service/LieBaoSDK;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/service/LieBaoSDK;->access$000(Lcom/android/fileexplorer/service/LieBaoSDK;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    const-string v0, "liebao service disconnected"

    .line 9
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/service/LieBaoSDK$1;->this$0:Lcom/android/fileexplorer/service/LieBaoSDK;

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {p1, v0}, Lcom/android/fileexplorer/service/LieBaoSDK;->access$102(Lcom/android/fileexplorer/service/LieBaoSDK;Lcom/cleanmaster/sdk/IKSCleaner;)Lcom/cleanmaster/sdk/IKSCleaner;

    .line 18
    return-void
.end method
