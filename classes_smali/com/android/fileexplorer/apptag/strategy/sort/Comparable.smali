.class public interface abstract Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;
.super Ljava/lang/Object;
.source "Comparable.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract getDate()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameWithoutSuffix()Ljava/lang/String;
.end method

.method public abstract getSize()J
.end method

.method public abstract isDir()Z
.end method
