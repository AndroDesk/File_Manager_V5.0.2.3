.class Lcom/android/fileexplorer/encryption/EncryptUtil$7;
.super Ljava/lang/Object;
.source "EncryptUtil.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/encryption/EncryptUtil;->addToPrivateFolder(ILandroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$action:I

.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$checkedList:Ljava/util/ArrayList;

.field public final synthetic val$destDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$7;->val$action:I

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$7;->val$activity:Landroid/app/Activity;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$7;->val$checkedList:Ljava/util/ArrayList;

    .line 7
    iput-object p4, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$7;->val$destDir:Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 1
    invoke-static {p2}, Lcom/miui/gallery/data/IExternalSettingSecretInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gallery/data/IExternalSettingSecretInterface;

    .line 4
    move-result-object p1

    .line 5
    iget p2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$7;->val$action:I

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$7;->val$activity:Landroid/app/Activity;

    .line 9
    iget-object v1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$7;->val$checkedList:Ljava/util/ArrayList;

    .line 11
    iget-object v2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$7;->val$destDir:Ljava/lang/String;

    .line 13
    invoke-static {p2, v0, v1, v2, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->access$200(ILandroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/gallery/data/IExternalSettingSecretInterface;)V

    .line 16
    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$7;->val$activity:Landroid/app/Activity;

    .line 18
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 21
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
