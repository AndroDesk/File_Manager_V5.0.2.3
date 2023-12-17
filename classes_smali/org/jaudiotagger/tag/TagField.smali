.class public interface abstract Lorg/jaudiotagger/tag/TagField;
.super Ljava/lang/Object;
.source "TagField.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract copyContent(Lorg/jaudiotagger/tag/TagField;)V
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getRawContent()[B
.end method

.method public abstract isBinary(Z)V
.end method

.method public abstract isBinary()Z
.end method

.method public abstract isCommon()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract toString()Ljava/lang/String;
.end method
