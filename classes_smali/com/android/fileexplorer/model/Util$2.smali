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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/model/Util$OnDoubleTapListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/model/Util$2;->val$listener:Lcom/android/fileexplorer/model/Util$OnDoubleTapListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/model/Util$2;->val$listener:Lcom/android/fileexplorer/model/Util$OnDoubleTapListener;

    invoke-interface {p1}, Lcom/android/fileexplorer/model/Util$OnDoubleTapListener;->onDoubleTap()Z

    move-result p1

    return p1
.end method
