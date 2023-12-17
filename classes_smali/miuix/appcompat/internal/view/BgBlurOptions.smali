.class public interface abstract annotation Lmiuix/appcompat/internal/view/BgBlurOptions;
.super Ljava/lang/Object;
.source "BgBlurOptions.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ACTION_BAR:I

.field public static final NONE:I

.field public static final ROOT_VIEW:I

.field public static final SPLIT_ACTION_BAR:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/internal/view/BgBlurOptions;->ACTION_BAR:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/internal/view/BgBlurOptions;->NONE:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/internal/view/BgBlurOptions;->ROOT_VIEW:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/internal/view/BgBlurOptions;->SPLIT_ACTION_BAR:I

    return-void
.end method
