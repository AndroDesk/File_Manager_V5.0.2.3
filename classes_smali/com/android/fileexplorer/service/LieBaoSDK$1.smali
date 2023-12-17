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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/service/LieBaoSDK;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/service/LieBaoSDK$1;->this$0:Lcom/android/fileexplorer/service/LieBaoSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    iget-object p1, p0, Lcom/android/fileexplorer/service/LieBaoSDK$1;->this$0:Lcom/android/fileexplorer/service/LieBaoSDK;

    invoke-static {p1}, Lcom/android/fileexplorer/service/LieBaoSDK;->access$000(Lcom/android/fileexplorer/service/LieBaoSDK;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "liebao service connected"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/service/LieBaoSDK$1;->this$0:Lcom/android/fileexplorer/service/LieBaoSDK;

    invoke-static {p2}, Lcom/cleanmaster/sdk/IKSCleaner$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cleanmaster/sdk/IKSCleaner;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/fileexplorer/service/LieBaoSDK;->access$102(Lcom/android/fileexplorer/service/LieBaoSDK;Lcom/cleanmaster/sdk/IKSCleaner;)Lcom/cleanmaster/sdk/IKSCleaner;

    :try_start_14
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_3d

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p2, v2, :cond_37

    aget-object v0, p1, v1

    aget-object p1, p1, v2

    goto :goto_3e

    :cond_37
    aget-object p1, p1, v1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_3e

    :cond_3d
    move-object p1, v0

    :goto_3e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_46

    const-string v0, "en"

    :cond_46
    iget-object p2, p0, Lcom/android/fileexplorer/service/LieBaoSDK$1;->this$0:Lcom/android/fileexplorer/service/LieBaoSDK;

    invoke-static {p2}, Lcom/android/fileexplorer/service/LieBaoSDK;->access$100(Lcom/android/fileexplorer/service/LieBaoSDK;)Lcom/cleanmaster/sdk/IKSCleaner;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Lcom/cleanmaster/sdk/IKSCleaner;->init(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_4f} :catch_50

    goto :goto_54

    :catch_50
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_54
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/service/LieBaoSDK$1;->this$0:Lcom/android/fileexplorer/service/LieBaoSDK;

    invoke-static {p1}, Lcom/android/fileexplorer/service/LieBaoSDK;->access$000(Lcom/android/fileexplorer/service/LieBaoSDK;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "liebao service disconnected"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/service/LieBaoSDK$1;->this$0:Lcom/android/fileexplorer/service/LieBaoSDK;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/service/LieBaoSDK;->access$102(Lcom/android/fileexplorer/service/LieBaoSDK;Lcom/cleanmaster/sdk/IKSCleaner;)Lcom/cleanmaster/sdk/IKSCleaner;

    return-void
.end method
