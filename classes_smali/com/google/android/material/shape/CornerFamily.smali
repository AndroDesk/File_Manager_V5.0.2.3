.class public interface abstract annotation Lcom/google/android/material/shape/CornerFamily;
.super Ljava/lang/Object;
.source "CornerFamily.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final CUT:I

.field public static final ROUNDED:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/android/material/shape/CornerFamily;->CUT:I

    return-void
.end method
