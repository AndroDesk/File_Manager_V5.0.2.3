.class public interface abstract Lmiuix/responsive/interfaces/IViewResponsive;
.super Ljava/lang/Object;
.source "IViewResponsive.java"


# virtual methods
.method public abstract onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)Z
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;ZLjava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Configuration;",
            "Lmiuix/responsive/map/ScreenSpec;",
            "Z",
            "Ljava/util/List<",
            "Lmiuix/responsive/map/ResponsiveViewSpec;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
