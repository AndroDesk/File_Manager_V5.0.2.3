.class public Lcom/google/android/material/resources/TextAppearanceConfig;
.super Ljava/lang/Object;
.source "TextAppearanceConfig.java"


# static fields
.field private static shouldLoadFontSynchronously:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setShouldLoadFontSynchronously(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcom/google/android/material/resources/TextAppearanceConfig;->shouldLoadFontSynchronously:Z

    .line 3
    return-void
.end method

.method public static shouldLoadFontSynchronously()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/google/android/material/resources/TextAppearanceConfig;->shouldLoadFontSynchronously:Z

    .line 3
    return v0
.end method
