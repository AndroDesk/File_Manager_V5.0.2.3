.class Lorg/jaudiotagger/Test2;
.super Lorg/jaudiotagger/Test;
.source "Test.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/jaudiotagger/Test;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 1

    new-instance p0, Lorg/jaudiotagger/Test2;

    invoke-direct {p0}, Lorg/jaudiotagger/Test2;-><init>()V

    invoke-static {}, Lorg/jaudiotagger/Test;->writeIt()V

    return-void
.end method
