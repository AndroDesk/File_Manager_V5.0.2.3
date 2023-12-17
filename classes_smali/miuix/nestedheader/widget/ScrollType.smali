.class public interface abstract annotation Lmiuix/nestedheader/widget/ScrollType;
.super Ljava/lang/Object;
.source "ScrollType.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# static fields
.field public static final COMPRESS:I

.field public static final OFFSET:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/nestedheader/widget/ScrollType;->COMPRESS:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/nestedheader/widget/ScrollType;->OFFSET:I

    return-void
.end method
