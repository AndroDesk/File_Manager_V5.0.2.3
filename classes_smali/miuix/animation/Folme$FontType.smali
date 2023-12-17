.class public interface abstract Lmiuix/animation/Folme$FontType;
.super Ljava/lang/Object;
.source "Folme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/Folme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FontType"
.end annotation


# static fields
.field public static final MITYPE:I

.field public static final MITYPE_MONO:I

.field public static final MIUI:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/Folme$FontType;->MITYPE:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/Folme$FontType;->MITYPE_MONO:I

    return-void
.end method
