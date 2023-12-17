.class Lcom/android/fileexplorer/model/Util$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/model/Util;->setOnDoubleTapListener(Landroid/view/View;Lcom/android/fileexplorer/model/Util$OnDoubleTapListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$listener:Lcom/android/fileexplorer/model/Util$OnDoubleTapListener;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/model/Util$OnDoubleTapListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/model/Util$2;->val$listener:Lcom/android/fileexplorer/model/Util$OnDoubleTapListener;

    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/model/Util$2;->val$listener:Lcom/android/fileexplorer/model/Util$OnDoubleTapListener;

    .line 3
    invoke-interface {p1}, Lcom/android/fileexplorer/model/Util$OnDoubleTapListener;->onDoubleTap()Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method
