.class public final Lxcrash/c;
.super Ljava/lang/Object;
.source "AnrHandler.java"


# static fields
.field public static final a:Lxcrash/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lxcrash/c;

    invoke-direct {v0}, Lxcrash/c;-><init>()V

    sput-object v0, Lxcrash/c;->a:Lxcrash/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v0, "^-----\\spid\\s(\\d+)\\sat\\s(.*)\\s-----$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    const-string v0, "^Cmd\\sline:\\s+(.*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void
.end method
