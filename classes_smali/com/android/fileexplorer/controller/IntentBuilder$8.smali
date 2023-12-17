.class Lcom/android/fileexplorer/controller/IntentBuilder$8;
.super Ljava/lang/Object;
.source "IntentBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field public final synthetic val$currentPath:Ljava/lang/String;

.field public final synthetic val$decompressTo:Ljava/lang/String;

.field public final synthetic val$decompressToHere:Ljava/lang/String;

.field public final synthetic val$filePath:Ljava/lang/String;

.field public final synthetic val$selectItems:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$decompressToHere:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$selectItems:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$filePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$currentPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iput-object p6, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$decompressTo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$decompressToHere:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$selectItems:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object p2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$filePath:Ljava/lang/String;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_63

    iget-object p2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$currentPath:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_63

    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$filePath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/model/ArchiveHelper;->setArchiveToDecompress(Ljava/lang/String;)V

    new-instance p2, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-direct {p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$currentPath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startDecompressThread(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    :cond_35
    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$decompressTo:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$selectItems:[Ljava/lang/CharSequence;

    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_63

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$filePath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/model/ArchiveHelper;->setArchiveToDecompress(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    const v1, 0x7f110110

    const v2, 0x7f110106

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/fileexplorer/model/Util;->pickFolder(Landroid/app/Activity;IIZZZ)V

    :cond_63
    :goto_63
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
