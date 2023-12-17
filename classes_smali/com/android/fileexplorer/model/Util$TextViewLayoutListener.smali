.class Lcom/android/fileexplorer/model/Util$TextViewLayoutListener;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/model/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextViewLayoutListener"
.end annotation


# instance fields
.field public fileItem:Lcom/android/fileexplorer/dao/file/FileItem;

.field private final mObserver:Landroid/view/ViewTreeObserver;

.field private final mTextViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Lcom/android/fileexplorer/dao/file/FileItem;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/fileexplorer/model/Util$TextViewLayoutListener;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/model/Util$TextViewLayoutListener;->mObserver:Landroid/view/ViewTreeObserver;

    iput-object p2, p0, Lcom/android/fileexplorer/model/Util$TextViewLayoutListener;->fileItem:Lcom/android/fileexplorer/dao/file/FileItem;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/model/Util$TextViewLayoutListener;->mObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/fileexplorer/model/Util$TextViewLayoutListener;->mObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/model/Util$TextViewLayoutListener;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_44

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->access$100(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/android/fileexplorer/model/Util$TextViewLayoutListener;->fileItem:Lcom/android/fileexplorer/dao/file/FileItem;

    if-eqz v1, :cond_44

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_44

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/model/Util$TextViewLayoutListener;->fileItem:Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/fileexplorer/model/Util$TextViewLayoutListener;->fileItem:Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/fileexplorer/dao/file/FileItem;->mEllipsizeName:Ljava/lang/String;

    :cond_44
    return-void
.end method
