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
.method public constructor <init>(Landroid/widget/TextView;Lcom/android/fileexplorer/dao/file/FileItem;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/model/Util$TextViewLayoutListener;->mTextViewRef:Ljava/lang/ref/WeakReference;

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/android/fileexplorer/model/Util$TextViewLayoutListener;->mObserver:Landroid/view/ViewTreeObserver;

    .line 17
    iput-object p2, p0, Lcom/android/fileexplorer/model/Util$TextViewLayoutListener;->fileItem:Lcom/android/fileexplorer/dao/file/FileItem;

    .line 19
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/Util$TextViewLayoutListener;->mObserver:Landroid/view/ViewTreeObserver;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/model/Util$TextViewLayoutListener;->mObserver:Landroid/view/ViewTreeObserver;

    .line 11
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/model/Util$TextViewLayoutListener;->mTextViewRef:Ljava/lang/ref/WeakReference;

    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/TextView;

    .line 22
    if-eqz v0, :cond_44

    .line 24
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->access$100(Landroid/widget/TextView;)V

    .line 27
    iget-object v1, p0, Lcom/android/fileexplorer/model/Util$TextViewLayoutListener;->fileItem:Lcom/android/fileexplorer/dao/file/FileItem;

    .line 29
    if-eqz v1, :cond_44

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_44

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/android/fileexplorer/model/Util$TextViewLayoutListener;->fileItem:Lcom/android/fileexplorer/dao/file/FileItem;

    .line 47
    invoke-virtual {v2}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_44

    .line 57
    iget-object v1, p0, Lcom/android/fileexplorer/model/Util$TextViewLayoutListener;->fileItem:Lcom/android/fileexplorer/dao/file/FileItem;

    .line 59
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 62
    move-result-object v0

    .line 63
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    iput-object v0, v1, Lcom/android/fileexplorer/dao/file/FileItem;->mEllipsizeName:Ljava/lang/String;

    .line 69
    :cond_44
    return-void
.end method
