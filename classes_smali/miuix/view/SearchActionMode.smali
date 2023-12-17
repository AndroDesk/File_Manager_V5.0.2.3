.class public interface abstract Lmiuix/view/SearchActionMode;
.super Ljava/lang/Object;
.source "SearchActionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/view/SearchActionMode$AnimatedViewListener;,
        Lmiuix/view/SearchActionMode$Callback;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract addAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getSearchInput()Landroid/widget/EditText;
.end method

.method public abstract removeAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V
.end method

.method public abstract resetCustomView()V
.end method

.method public abstract setAnchorApplyExtraPaddingByUser(Z)V
.end method

.method public abstract setAnchorView(Landroid/view/View;)V
.end method

.method public abstract setAnimateView(Landroid/view/View;)V
.end method

.method public abstract setAnimatedViewListener(Lmiuix/view/SearchActionMode$AnimatedViewListener;)V
.end method

.method public abstract setCustomView(Landroid/view/View;)V
.end method

.method public abstract setResultView(Landroid/view/View;)V
.end method
