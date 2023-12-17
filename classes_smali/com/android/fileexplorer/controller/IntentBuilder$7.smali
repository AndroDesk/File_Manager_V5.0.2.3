.class Lcom/android/fileexplorer/controller/IntentBuilder$7;
.super Ljava/lang/Object;
.source "IntentBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/controller/IntentBuilder;->viewArchive(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field public final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$7;->val$filePath:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$7;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$7;->val$filePath:Ljava/lang/String;

    .line 3
    const-string v0, "/FileExplorer/.safebox"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$7;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 14
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 17
    move-result-object p1

    .line 18
    new-instance v0, Ljava/io/File;

    .line 20
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$7;->val$filePath:Ljava/lang/String;

    .line 22
    invoke-static {v1}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateLockPath(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-static {p1, v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->operationReEncryptFile(Landroid/app/Activity;Ljava/io/File;)I

    .line 32
    move-result p1

    .line 33
    const/4 v0, 0x3

    .line 34
    if-ne p1, v0, :cond_31

    .line 36
    iget-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$7;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 38
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 41
    move-result-object p1

    .line 42
    new-instance v0, Lcom/android/fileexplorer/controller/IntentBuilder$7$1;

    .line 44
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/controller/IntentBuilder$7$1;-><init>(Lcom/android/fileexplorer/controller/IntentBuilder$7;)V

    .line 47
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 50
    :cond_31
    return-void
.end method
