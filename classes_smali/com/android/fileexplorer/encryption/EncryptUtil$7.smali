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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ILandroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 5

    iput p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$7;->val$action:I

    iput-object p2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$7;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$7;->val$checkedList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$7;->val$destDir:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    invoke-static {p2}, Lcom/miui/gallery/data/IExternalSettingSecretInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gallery/data/IExternalSettingSecretInterface;

    move-result-object p1

    iget p2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$7;->val$action:I

    iget-object v0, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$7;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$7;->val$checkedList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$7;->val$destDir:Ljava/lang/String;

    invoke-static {p2, v0, v1, v2, p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->access$200(ILandroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/gallery/data/IExternalSettingSecretInterface;)V

    iget-object p1, p0, Lcom/android/fileexplorer/encryption/EncryptUtil$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
