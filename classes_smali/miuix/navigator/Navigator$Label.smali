.class public abstract Lmiuix/navigator/Navigator$Label;
.super Ljava/lang/Object;
.source "Navigator.java"

# interfaces
.implements Lmiuix/navigator/NavigationItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/Navigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Label"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getIconResId()I
.end method

.method public abstract getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract setIcon(I)V
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method
