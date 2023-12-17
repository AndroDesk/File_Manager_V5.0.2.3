.class public interface abstract Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;
.super Ljava/lang/Object;
.source "TextDrawableHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/TextDrawableHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TextDrawableDelegate"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract getState()[I
.end method

.method public abstract onStateChange([I)Z
.end method

.method public abstract onTextSizeChange()V
.end method
