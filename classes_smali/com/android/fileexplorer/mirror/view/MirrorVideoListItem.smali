.class public Lcom/android/fileexplorer/mirror/view/MirrorVideoListItem;
.super Lcom/android/fileexplorer/view/VideoListItem;
.source "MirrorVideoListItem.java"

# interfaces
.implements Lcom/android/fileexplorer/mirror/modecallback/GetGestureDetectorListener;


# instance fields
.field private detector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/VideoListItem;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/VideoListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/VideoListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorVideoListItem;->detector:Landroid/view/GestureDetector;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorVideoListItem;->detector:Landroid/view/GestureDetector;

    .line 3
    return-void
.end method
