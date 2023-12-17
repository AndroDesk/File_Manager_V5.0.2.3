.class public Lcom/android/fileexplorer/service/FTPServerService$ServiceBinder;
.super Landroid/os/Binder;
.source "FTPServerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/service/FTPServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceBinder"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/service/FTPServerService;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/service/FTPServerService;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/service/FTPServerService$ServiceBinder;->this$0:Lcom/android/fileexplorer/service/FTPServerService;

    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getService()Lcom/android/fileexplorer/service/FTPServerService;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/service/FTPServerService$ServiceBinder;->this$0:Lcom/android/fileexplorer/service/FTPServerService;

    .line 3
    return-object v0
.end method
