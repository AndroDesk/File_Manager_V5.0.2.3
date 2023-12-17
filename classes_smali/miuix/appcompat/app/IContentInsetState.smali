.class public interface abstract Lmiuix/appcompat/app/IContentInsetState;
.super Ljava/lang/Object;
.source "IContentInsetState.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract bindViewWithContentInset(Landroid/view/View;)V
.end method

.method public abstract getContentInset()Landroid/graphics/Rect;
.end method

.method public abstract onContentInsetChanged(Landroid/graphics/Rect;)V
.end method

.method public abstract onDispatchNestedScrollOffset([I)V
.end method

.method public abstract onProcessBindViewWithContentInset(Landroid/graphics/Rect;)V
.end method

.method public abstract requestDispatchContentInset()Z
.end method

.method public abstract setCorrectNestedScrollMotionEventEnabled(Z)V
.end method
