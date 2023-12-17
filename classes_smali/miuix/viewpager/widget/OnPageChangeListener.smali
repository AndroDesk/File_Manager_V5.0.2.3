.class public interface abstract Lmiuix/viewpager/widget/OnPageChangeListener;
.super Ljava/lang/Object;
.source "OnPageChangeListener.java"


# static fields
.field public static final SCROLL_STATE_DRAGGING:I

.field public static final SCROLL_STATE_IDLE:I

.field public static final SCROLL_STATE_SETTLING:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/viewpager/widget/OnPageChangeListener;->SCROLL_STATE_DRAGGING:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/viewpager/widget/OnPageChangeListener;->SCROLL_STATE_IDLE:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/viewpager/widget/OnPageChangeListener;->SCROLL_STATE_SETTLING:I

    return-void
.end method


# virtual methods
.method public abstract onPageScrollStateChanged(I)V
.end method

.method public abstract onPageScrolled(IFI)V
.end method

.method public abstract onPageSelected(I)V
.end method
