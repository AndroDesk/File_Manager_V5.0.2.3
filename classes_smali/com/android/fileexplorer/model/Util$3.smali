.class Lcom/android/fileexplorer/model/Util$3;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/model/Util;->setOnDoubleTapListener(Landroid/view/View;Lcom/android/fileexplorer/model/Util$OnDoubleTapListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/view/GestureDetector;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/model/Util$3;->val$gestureDetector:Landroid/view/GestureDetector;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/model/Util$3;->val$gestureDetector:Landroid/view/GestureDetector;

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method
