.class public interface abstract Lmiuix/pickerwidget/widget/NumberPicker$OnScrollListener;
.super Ljava/lang/Object;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnScrollListener"
.end annotation


# static fields
.field public static final SCROLL_STATE_FLING:I

.field public static final SCROLL_STATE_IDLE:I

.field public static final SCROLL_STATE_TOUCH_SCROLL:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/pickerwidget/widget/NumberPicker$OnScrollListener;->SCROLL_STATE_FLING:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/pickerwidget/widget/NumberPicker$OnScrollListener;->SCROLL_STATE_IDLE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/pickerwidget/widget/NumberPicker$OnScrollListener;->SCROLL_STATE_TOUCH_SCROLL:I

    return-void
.end method


# virtual methods
.method public abstract onScrollStateChange(Lmiuix/pickerwidget/widget/NumberPicker;I)V
.end method
