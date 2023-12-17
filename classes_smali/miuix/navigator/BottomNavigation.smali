.class public interface abstract Lmiuix/navigator/BottomNavigation;
.super Ljava/lang/Object;
.source "BottomNavigation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/navigator/BottomNavigation$OnItemSelectedListener;
    }
.end annotation


# static fields
.field public static final LAYOUT_STYLE_COMPACT:I

.field public static final LAYOUT_STYLE_MASK_WIDE:I

.field public static final LAYOUT_STYLE_WIDE_LAND:I

.field public static final LAYOUT_STYLE_WIDE_PORT:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/BottomNavigation;->LAYOUT_STYLE_COMPACT:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/BottomNavigation;->LAYOUT_STYLE_MASK_WIDE:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/BottomNavigation;->LAYOUT_STYLE_WIDE_LAND:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigator/BottomNavigation;->LAYOUT_STYLE_WIDE_PORT:I

    return-void
.end method


# virtual methods
.method public abstract getMenu()Landroid/view/Menu;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract inflateMenu(I)V
.end method

.method public abstract setLayoutStyle(I)V
.end method
