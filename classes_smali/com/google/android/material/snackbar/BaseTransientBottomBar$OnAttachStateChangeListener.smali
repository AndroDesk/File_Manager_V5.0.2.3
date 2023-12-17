.class public interface abstract Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAttachStateChangeListener"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onViewAttachedToWindow(Landroid/view/View;)V
.end method

.method public abstract onViewDetachedFromWindow(Landroid/view/View;)V
.end method
