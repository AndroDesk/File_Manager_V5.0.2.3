.class public interface abstract Lmiuix/responsive/interfaces/IResponsive;
.super Ljava/lang/Object;
.source "IResponsive.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public dispatchResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 4

    .line 1
    invoke-interface {p0, p1, p2, p3}, Lmiuix/responsive/interfaces/IResponsive;->onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    .line 4
    return-void
.end method

.method public abstract getResponsiveState()Lmiuix/responsive/map/ResponsiveState;
.end method

.method public abstract getResponsiveSubject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
.end method
