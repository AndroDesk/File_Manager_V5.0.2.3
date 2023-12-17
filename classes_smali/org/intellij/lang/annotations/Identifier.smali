.class public interface abstract annotation Lorg/intellij/lang/annotations/Identifier;
.super Ljava/lang/Object;
.source "Identifier.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Lorg/intellij/lang/annotations/Pattern;
    value = "\\p{javaJavaIdentifierStart}\\p{javaJavaIdentifierPart}*"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method
