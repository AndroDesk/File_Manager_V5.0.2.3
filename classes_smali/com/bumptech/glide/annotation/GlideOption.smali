.class public interface abstract annotation Lcom/bumptech/glide/annotation/GlideOption;
.super Ljava/lang/Object;
.source "GlideOption.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/bumptech/glide/annotation/GlideOption;
        memoizeStaticMethod = false
        override = 0x0
        skipStaticMethod = false
        staticMethodName = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final OVERRIDE_EXTEND:I

.field public static final OVERRIDE_NONE:I

.field public static final OVERRIDE_REPLACE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/bumptech/glide/annotation/GlideOption;->OVERRIDE_EXTEND:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/bumptech/glide/annotation/GlideOption;->OVERRIDE_NONE:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/bumptech/glide/annotation/GlideOption;->OVERRIDE_REPLACE:I

    return-void
.end method


# virtual methods
.method public abstract memoizeStaticMethod()Z
.end method

.method public abstract override()I
.end method

.method public abstract skipStaticMethod()Z
.end method

.method public abstract staticMethodName()Ljava/lang/String;
.end method
