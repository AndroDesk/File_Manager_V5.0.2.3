.class Lcom/android/fileexplorer/service/FTPServerService$2;
.super Ljava/lang/Object;
.source "FTPServerService.java"

# interfaces
.implements Lcom/android/fileexplorer/listener/permission/PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/service/FTPServerService;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/service/FTPServerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/service/FTPServerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/service/FTPServerService$2;->this$0:Lcom/android/fileexplorer/service/FTPServerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionGranted()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/service/FTPServerService$2;->this$0:Lcom/android/fileexplorer/service/FTPServerService;

    invoke-static {v0}, Lcom/android/fileexplorer/service/FTPServerService;->access$000(Lcom/android/fileexplorer/service/FTPServerService;)V

    return-void
.end method

.method public onPermissionReject(Ljava/lang/String;)V
    .registers 4

    const-string v0, "onPermissionReject: "

    const-string v1, "FTPServerService"

    invoke-static {v0, p1, v1}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldShowRational(Ljava/lang/String;)V
    .registers 4

    const-string v0, "shouldShowRational: "

    const-string v1, "FTPServerService"

    invoke-static {v0, p1, v1}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
