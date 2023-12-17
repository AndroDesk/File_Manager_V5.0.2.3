.class public final synthetic Lcom/android/fileexplorer/filemanager/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/io/InputStream;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/io/File;

.field public final synthetic e:Ljava/io/OutputStream;

.field public final synthetic f:Landroid/os/ParcelFileDescriptor;

.field public final synthetic g:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(ILjava/io/InputStream;Landroid/content/Context;Ljava/io/File;Ljava/io/OutputStream;Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/CountDownLatch;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/fileexplorer/filemanager/a;->a:I

    iput-object p2, p0, Lcom/android/fileexplorer/filemanager/a;->b:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/android/fileexplorer/filemanager/a;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/fileexplorer/filemanager/a;->d:Ljava/io/File;

    iput-object p5, p0, Lcom/android/fileexplorer/filemanager/a;->e:Ljava/io/OutputStream;

    iput-object p6, p0, Lcom/android/fileexplorer/filemanager/a;->f:Landroid/os/ParcelFileDescriptor;

    iput-object p7, p0, Lcom/android/fileexplorer/filemanager/a;->g:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget v0, p0, Lcom/android/fileexplorer/filemanager/a;->a:I

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/a;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/android/fileexplorer/filemanager/a;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/fileexplorer/filemanager/a;->d:Ljava/io/File;

    iget-object v4, p0, Lcom/android/fileexplorer/filemanager/a;->e:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/android/fileexplorer/filemanager/a;->f:Landroid/os/ParcelFileDescriptor;

    iget-object v6, p0, Lcom/android/fileexplorer/filemanager/a;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-static/range {v0 .. v6}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->c(ILjava/io/InputStream;Landroid/content/Context;Ljava/io/File;Ljava/io/OutputStream;Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
