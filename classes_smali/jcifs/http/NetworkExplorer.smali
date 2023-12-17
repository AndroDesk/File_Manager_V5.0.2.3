.class public Ljcifs/http/NetworkExplorer;
.super Ljavax/servlet/http/HttpServlet;
.source "NetworkExplorer.java"


# static fields
.field private static log:Ljcifs/util/LogStream;


# instance fields
.field private credentialsSupplied:Z

.field private defaultDomain:Ljava/lang/String;

.field private enableBasic:Z

.field private insecureBasic:Z

.field private mimeMap:Ljcifs/util/MimeMap;

.field private ntlmSsp:Ljcifs/http/NtlmSsp;

.field private realm:Ljava/lang/String;

.field private style:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/http/NetworkExplorer;->log:Ljcifs/util/LogStream;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    return-void
.end method

.method private parseServerAndShare(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/16 v0, 0x100

    new-array v0, v0, [C

    const/4 v1, 0x0

    if-nez p1, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    const/16 v5, 0x2f

    if-ge v4, v2, :cond_1c

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_19

    goto :goto_1c

    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_1c
    :goto_1c
    if-ne v4, v2, :cond_1f

    return-object v1

    :cond_1f
    move v1, v3

    :goto_20
    if-ge v4, v2, :cond_31

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_29

    goto :goto_31

    :cond_29
    add-int/lit8 v7, v1, 0x1

    aput-char v6, v0, v1

    add-int/lit8 v4, v4, 0x1

    move v1, v7

    goto :goto_20

    :cond_31
    :goto_31
    if-ge v4, v2, :cond_3d

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_3a

    goto :goto_3d

    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_3d
    :goto_3d
    if-ge v4, v2, :cond_55

    add-int/lit8 v6, v1, 0x1

    aput-char v5, v0, v1

    :goto_43
    add-int/lit8 v1, v6, 0x1

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v6

    if-ge v7, v2, :cond_55

    if-ne v4, v5, :cond_52

    goto :goto_55

    :cond_52
    move v6, v1

    move v4, v7

    goto :goto_43

    :cond_55
    :goto_55
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method


# virtual methods
.method public compareDates(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I
    .registers 8

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_15

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_14

    :cond_13
    move v2, v3

    :goto_14
    return v2

    :cond_15
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_24
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->lastModified()J

    move-result-wide p1

    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->lastModified()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_31

    goto :goto_32

    :cond_31
    move v2, v3

    :goto_32
    return v2
.end method

.method public compareNames(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I
    .registers 6

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v1

    if-eq v0, v1, :cond_14

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, -0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x1

    :goto_13
    return p1

    :cond_14
    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compareSizes(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I
    .registers 10

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_15

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_14

    :cond_13
    move v2, v3

    :goto_14
    return v2

    :cond_15
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_24
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v0

    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-nez p1, :cond_3c

    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_3c
    if-lez p1, :cond_3f

    goto :goto_40

    :cond_3f
    move v2, v3

    :goto_40
    return v2
.end method

.method public compareTypes(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I
    .registers 8

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_14

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_13

    move v2, v3

    :cond_13
    return v2

    :cond_14
    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-virtual {p2, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_23
    const/16 p1, 0x2e

    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const-string v1, ""

    if-ne v0, v3, :cond_2f

    move-object v0, v1

    goto :goto_34

    :cond_2f
    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_34
    invoke-virtual {p3, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    if-ne p1, v3, :cond_3b

    goto :goto_40

    :cond_3b
    add-int/2addr p1, v2

    invoke-virtual {p3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_40
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4a

    invoke-virtual {p2, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    :cond_4a
    return p1
.end method

.method public doDirectory(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljcifs/smb/SmbFile;)V
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/d/yy h:mm a"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setCalendar(Ljava/util/Calendar;)V

    invoke-virtual/range {p3 .. p3}, Ljcifs/smb/SmbFile;->listFiles()[Ljcifs/smb/SmbFile;

    move-result-object v3

    sget v4, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x2

    if-le v4, v5, :cond_34

    sget-object v4, Ljcifs/http/NetworkExplorer;->log:Ljcifs/util/LogStream;

    new-instance v6, Ljava/lang/StringBuilder;

    array-length v7, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " items listed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_34
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    const-string v6, "fmt"

    invoke-interface {v0, v6}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_43

    const-string v6, "col"

    :cond_43
    const-string v7, "sort"

    invoke-interface {v0, v7}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x3

    const/4 v9, 0x1

    if-eqz v0, :cond_74

    const-string v10, "name"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_56

    goto :goto_74

    :cond_56
    const-string v10, "size"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_60

    move v10, v9

    goto :goto_75

    :cond_60
    const-string v10, "type"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6a

    move v10, v5

    goto :goto_75

    :cond_6a
    const-string v10, "date"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    move v10, v7

    goto :goto_75

    :cond_74
    :goto_74
    const/4 v10, 0x0

    :goto_75
    const/16 v0, 0x1c

    move v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_7b
    array-length v0, v3

    if-lt v12, v0, :cond_2c8

    const/16 v0, 0x32

    if-le v11, v0, :cond_83

    move v11, v0

    :cond_83
    mul-int/lit8 v0, v11, 0x9

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v15

    const-string v7, "text/html"

    move-object/from16 v8, p2

    invoke-interface {v8, v7}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    const-string v7, "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">"

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "<html><head><title>Network Explorer</title>"

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "<meta HTTP-EQUIV=\"Pragma\" CONTENT=\"no-cache\">"

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "<style TYPE=\"text/css\">"

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, v1, Ljcifs/http/NetworkExplorer;->style:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    array-length v3, v3

    const/16 v7, 0xc8

    if-ge v3, v7, :cond_bd

    const-string v3, "    a:hover {"

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "        background: #a2ff01;"

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    }"

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_bd
    const-string v3, "</STYLE>"

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "</head><body>"

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "<a class=\"sort\" style=\"width: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ";\" href=\"?fmt=detail&sort=name\">Name</a>"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "<a class=\"sort\" href=\"?fmt=detail&sort=size\">Size</a>"

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "<a class=\"sort\" href=\"?fmt=detail&sort=type\">Type</a>"

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "<a class=\"sort\" style=\"width: 180\" href=\"?fmt=detail&sort=date\">Modified</a><br clear=\'all\'><p>"

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljcifs/smb/SmbFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x7

    if-ge v7, v8, :cond_ff

    const-string v3, "<b><big>smb://</big></b><br>"

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "."

    goto :goto_117

    :cond_ff
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "<b><big>"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</big></b><br>"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "../"

    :goto_117
    new-instance v7, Ljava/lang/StringBuilder;

    add-int v8, v13, v14

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " objects ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " directories, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " files)<br>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "<b><a class=\"plain\" href=\".\">normal</a> | <a class=\"plain\" href=\"?fmt=detail\">detailed</a></b>"

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "<p><table border=\'0\' cellspacing=\'0\' cellpadding=\'0\'><tr><td>"

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "<A style=\"width: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "; height: 18;\" HREF=\""

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "\"><b>&uarr;</b></a>"

    invoke-virtual {v15, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v10, "detail"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "<br clear=\'all\'>"

    if-eqz v11, :cond_173

    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_173
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-eq v11, v9, :cond_17f

    invoke-virtual/range {p3 .. p3}, Ljcifs/smb/SmbFile;->getType()I

    move-result v11

    if-eq v11, v5, :cond_181

    :cond_17f
    const-string v3, ""

    :cond_181
    invoke-virtual {v4}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v16

    :goto_185
    invoke-interface/range {v16 .. v16}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_199

    const-string v0, "</td></tr></table>"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "</BODY></HTML>"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/PrintWriter;->close()V

    return-void

    :cond_199
    invoke-interface/range {v16 .. v16}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljcifs/smb/SmbFile;

    invoke-virtual {v4}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v13, "</b></a>"

    const-wide/16 v17, 0x400

    const-string v14, "\"><b>"

    if-eqz v11, :cond_252

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_1d9

    const-string v4, "?fmt=detail\"><b>"

    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_24d

    :cond_1d9
    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "</b></a><div align=\'right\'>"

    invoke-virtual {v15, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v13

    div-long v13, v13, v17

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, " KB </div><div>"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v11, 0x2e

    invoke-virtual {v5, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    add-int/2addr v11, v9

    if-le v11, v9, :cond_22e

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v11

    const/4 v14, 0x6

    if-ge v13, v14, :cond_22e

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "</div class=\'ext\'>"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_233

    :cond_22e
    const-string v5, "&nbsp;</div>"

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_233
    const-string v5, "<div style=\'width: 180\'>"

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v4}, Ljcifs/smb/SmbFile;->lastModified()J

    move-result-wide v13

    invoke-direct {v5, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "</div>"

    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_24d
    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_185

    :cond_252
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_27b

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_185

    :cond_27b
    const-string v11, ";\" HREF=\""

    invoke-virtual {v15, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "</b><br><small>"

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v13

    div-long v13, v13, v17

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "KB <br>"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v4}, Ljcifs/smb/SmbFile;->lastModified()J

    move-result-wide v13

    invoke-direct {v5, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "</small>"

    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "</a>"

    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_185

    :cond_2c8
    :try_start_2c8
    aget-object v0, v3, v12

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0
    :try_end_2ce
    .catch Ljcifs/smb/SmbAuthException; {:try_start_2c8 .. :try_end_2ce} :catch_2e9
    .catch Ljcifs/smb/SmbException; {:try_start_2c8 .. :try_end_2ce} :catch_2d4

    const/16 v15, 0x10

    if-ne v0, v15, :cond_2f3

    goto/16 :goto_387

    :catch_2d4
    move-exception v0

    sget v15, Ljcifs/util/LogStream;->level:I

    if-le v15, v5, :cond_2de

    sget-object v15, Ljcifs/http/NetworkExplorer;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v15}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_2de
    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v15

    const v8, -0x3fffffff  # -2.0000002f

    if-ne v15, v8, :cond_2e8

    goto :goto_2f3

    :cond_2e8
    throw v0

    :catch_2e9
    move-exception v0

    sget v8, Ljcifs/util/LogStream;->level:I

    if-le v8, v5, :cond_2f3

    sget-object v8, Ljcifs/http/NetworkExplorer;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v8}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_2f3
    :goto_2f3
    aget-object v0, v3, v12

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2fe

    add-int/lit8 v13, v13, 0x1

    goto :goto_300

    :cond_2fe
    add-int/lit8 v14, v14, 0x1

    :goto_300
    aget-object v0, v3, v12

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v0

    sget v8, Ljcifs/util/LogStream;->level:I

    if-le v8, v7, :cond_324

    sget-object v8, Ljcifs/http/NetworkExplorer;->log:Ljcifs/util/LogStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ": "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_324
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v11, :cond_32b

    move v11, v7

    :cond_32b
    invoke-virtual {v4}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    const/4 v8, 0x0

    :goto_330
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_337

    goto :goto_382

    :cond_337
    if-nez v10, :cond_34a

    aget-object v15, v3, v12

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Ljcifs/smb/SmbFile;

    invoke-virtual {v1, v15, v0, v5}, Ljcifs/http/NetworkExplorer;->compareNames(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I

    move-result v5

    if-gez v5, :cond_38d

    goto :goto_382

    :cond_34a
    if-ne v10, v9, :cond_35b

    aget-object v5, v3, v12

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljcifs/smb/SmbFile;

    invoke-virtual {v1, v5, v0, v15}, Ljcifs/http/NetworkExplorer;->compareSizes(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I

    move-result v5

    if-gez v5, :cond_38d

    goto :goto_382

    :cond_35b
    const/4 v5, 0x2

    if-ne v10, v5, :cond_36f

    aget-object v15, v3, v12

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Ljcifs/smb/SmbFile;

    invoke-virtual {v1, v15, v0, v5}, Ljcifs/http/NetworkExplorer;->compareTypes(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I

    move-result v5

    if-gez v5, :cond_38d

    goto :goto_382

    :cond_36f
    const/4 v5, 0x3

    if-ne v10, v5, :cond_38d

    aget-object v15, v3, v12

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Ljcifs/smb/SmbFile;

    invoke-virtual {v1, v15, v0, v5}, Ljcifs/http/NetworkExplorer;->compareDates(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I

    move-result v5

    if-gez v5, :cond_38d

    :goto_382
    aget-object v0, v3, v12

    invoke-virtual {v4, v8, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    :goto_387
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x3

    goto/16 :goto_7b

    :cond_38d
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x2

    goto :goto_330
.end method

.method public doFile(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljcifs/smb/SmbFile;)V
    .registers 9

    const/16 p1, 0x2000

    new-array p1, p1, [B

    new-instance v0, Ljcifs/smb/SmbFileInputStream;

    invoke-direct {v0, p3}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;)V

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v1

    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/plain"

    invoke-interface {p2, v3}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-lez v3, :cond_3c

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_3c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_3c

    iget-object v3, p0, Ljcifs/http/NetworkExplorer;->mimeMap:Ljcifs/util/MimeMap;

    invoke-virtual {v3, v2}, Ljcifs/util/MimeMap;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "Content-Length"

    invoke-interface {p2, v2, p3}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "Accept-Ranges"

    const-string v2, "Bytes"

    invoke-interface {p2, p3, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_59
    invoke-virtual {v0, p1}, Ljcifs/smb/SmbFileInputStream;->read([B)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_61

    return-void

    :cond_61
    const/4 p3, 0x0

    invoke-virtual {v1, p1, p3, p2}, Ljavax/servlet/ServletOutputStream;->write([BII)V

    goto :goto_59
.end method

.method public doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f

    if-eqz v5, :cond_29

    invoke-direct {v1, v5}, Ljcifs/http/NetworkExplorer;->parseServerAndShare(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2a

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_2a

    invoke-virtual {v7, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    move v7, v0

    goto :goto_30

    :cond_29
    const/4 v7, 0x0

    :cond_2a
    const/4 v6, 0x1

    move-object/from16 v18, v7

    move v7, v6

    move-object/from16 v6, v18

    :goto_30
    const-string v8, "Authorization"

    invoke-interface {v2, v8}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-boolean v9, v1, Ljcifs/http/NetworkExplorer;->enableBasic:Z

    if-eqz v9, :cond_45

    iget-boolean v9, v1, Ljcifs/http/NetworkExplorer;->insecureBasic:Z

    if-nez v9, :cond_44

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    move-result v9

    if-eqz v9, :cond_45

    :cond_44
    const/4 v0, 0x1

    :cond_45
    move v9, v0

    const-string v10, "\""

    const-string v11, "Basic realm=\""

    const-string v12, "close"

    const-string v13, "Connection"

    const-string v14, "NTLM"

    const-string v15, "npa-"

    move-object/from16 v16, v12

    const-string v12, "WWW-Authenticate"

    if-eqz v8, :cond_104

    const-string v0, "NTLM "

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_6d

    if-eqz v9, :cond_104

    move-object/from16 v17, v13

    const-string v13, "Basic "

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_106

    goto :goto_6f

    :cond_6d
    move-object/from16 v17, v13

    :goto_6f
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9d

    if-eqz v5, :cond_7f

    if-nez v6, :cond_7a

    goto :goto_7f

    :cond_7a
    invoke-static {v6, v7}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object v0

    goto :goto_8f

    :cond_7f
    :goto_7f
    const-string v0, "\u0001\u0002__MSBROWSE__\u0002"

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v0, v8, v7}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v0

    :goto_8f
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    invoke-static {v0}, Ljcifs/smb/SmbSession;->getChallenge(Ljcifs/UniAddress;)[B

    move-result-object v0

    invoke-static {v2, v3, v0}, Ljcifs/http/NtlmSsp;->authenticate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;[B)Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object v0

    if-nez v0, :cond_f0

    return-void

    :cond_9d
    new-instance v0, Ljava/lang/String;

    const/4 v7, 0x6

    invoke-virtual {v8, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljcifs/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v7

    const-string v8, "US-ASCII"

    invoke-direct {v0, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_bc

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto :goto_bd

    :cond_bc
    move-object v13, v0

    :goto_bd
    if-eq v7, v8, :cond_c6

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c8

    :cond_c6
    const-string v0, ""

    :goto_c8
    const/16 v7, 0x5c

    invoke-virtual {v13, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v8, :cond_d7

    const/16 v7, 0x2f

    invoke-virtual {v13, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    :cond_d7
    if-eq v7, v8, :cond_df

    const/4 v8, 0x0

    invoke-virtual {v13, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_e1

    :cond_df
    iget-object v8, v1, Ljcifs/http/NetworkExplorer;->defaultDomain:Ljava/lang/String;

    :goto_e1
    const/4 v2, -0x1

    if-eq v7, v2, :cond_ea

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v13, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    :cond_ea
    new-instance v2, Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v2, v8, v13, v0}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    :cond_f0
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7, v0}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_144

    :cond_104
    move-object/from16 v17, v13

    :cond_106
    const/4 v0, 0x0

    iget-boolean v2, v1, Ljcifs/http/NetworkExplorer;->credentialsSupplied:Z

    if-nez v2, :cond_144

    if-eqz v4, :cond_11f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/smb/NtlmPasswordAuthentication;

    :cond_11f
    if-nez v0, :cond_144

    invoke-interface {v3, v12, v14}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_134

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Ljcifs/http/NetworkExplorer;->realm:Ljava/lang/String;

    invoke-static {v0, v2, v10}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v12, v0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_134
    move-object/from16 v2, v16

    move-object/from16 v7, v17

    invoke-interface {v3, v7, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x191

    invoke-interface {v3, v0}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    return-void

    :cond_144
    :goto_144
    move-object/from16 v2, v16

    move-object/from16 v7, v17

    const-string v8, "smb:/"

    if-eqz v0, :cond_169

    :try_start_14c
    new-instance v13, Ljcifs/smb/SmbFile;
    :try_end_14e
    .catch Ljcifs/smb/SmbAuthException; {:try_start_14c .. :try_end_14e} :catch_164
    .catch Ljcifs/smb/DfsReferral; {:try_start_14c .. :try_end_14e} :catch_160

    move-object/from16 v16, v2

    :try_start_150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V

    goto :goto_186

    :catch_160
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_19c

    :catch_164
    move-exception v0

    move-object/from16 v16, v2

    goto/16 :goto_1e5

    :cond_169
    move-object/from16 v16, v2

    if-nez v6, :cond_175

    new-instance v13, Ljcifs/smb/SmbFile;

    const-string v0, "smb://"

    invoke-direct {v13, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    goto :goto_186

    :cond_175
    new-instance v13, Ljcifs/smb/SmbFile;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    :goto_186
    invoke-virtual {v13}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0
    :try_end_18a
    .catch Ljcifs/smb/SmbAuthException; {:try_start_150 .. :try_end_18a} :catch_1e4
    .catch Ljcifs/smb/DfsReferral; {:try_start_150 .. :try_end_18a} :catch_160

    if-eqz v0, :cond_192

    move-object/from16 v2, p1

    :try_start_18e
    invoke-virtual {v1, v2, v3, v13}, Ljcifs/http/NetworkExplorer;->doDirectory(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljcifs/smb/SmbFile;)V

    goto :goto_197

    :cond_192
    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v3, v13}, Ljcifs/http/NetworkExplorer;->doFile(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljcifs/smb/SmbFile;)V
    :try_end_197
    .catch Ljcifs/smb/SmbAuthException; {:try_start_18e .. :try_end_197} :catch_19a
    .catch Ljcifs/smb/DfsReferral; {:try_start_18e .. :try_end_197} :catch_198

    :goto_197
    return-void

    :catch_198
    move-exception v0

    goto :goto_19c

    :catch_19a
    move-exception v0

    goto :goto_1e7

    :goto_19c
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v7}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2f

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v7, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, v0, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v5, :cond_1d9

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1d9
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    return-void

    :catch_1e4
    move-exception v0

    :goto_1e5
    move-object/from16 v2, p1

    :goto_1e7
    if-eqz v4, :cond_1f8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    :cond_1f8
    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v0

    const v4, -0x3ffffffb  # -2.0000012f

    if-ne v0, v4, :cond_20d

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    return-void

    :cond_20d
    invoke-interface {v3, v12, v14}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_220

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Ljcifs/http/NetworkExplorer;->realm:Ljava/lang/String;

    invoke-static {v0, v2, v10}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v12, v0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_220
    move-object/from16 v2, v16

    invoke-interface {v3, v7, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x191

    invoke-interface {v3, v0}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    return-void
.end method

.method public init()V
    .registers 8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    const-string v2, "jcifs.smb.client.soTimeout"

    const-string v3, "600000"

    invoke-static {v2, v3}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "jcifs.smb.client.attrExpirationPeriod"

    const-string v3, "300000"

    invoke-static {v2, v3}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljcifs/http/NetworkExplorer;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_ab

    const-string v2, "jcifs.smb.client.username"

    invoke-static {v2}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_31

    new-instance v2, Ljcifs/http/NtlmSsp;

    invoke-direct {v2}, Ljcifs/http/NtlmSsp;-><init>()V

    iput-object v2, p0, Ljcifs/http/NetworkExplorer;->ntlmSsp:Ljcifs/http/NtlmSsp;

    goto :goto_34

    :cond_31
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljcifs/http/NetworkExplorer;->credentialsSupplied:Z

    :goto_34
    :try_start_34
    new-instance v2, Ljcifs/util/MimeMap;

    invoke-direct {v2}, Ljcifs/util/MimeMap;-><init>()V

    iput-object v2, p0, Ljcifs/http/NetworkExplorer;->mimeMap:Ljcifs/util/MimeMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "jcifs/http/ne.css"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    :goto_49
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne v3, v5, :cond_95

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/http/NetworkExplorer;->style:Ljava/lang/String;
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_57} :catch_a0

    const-string v0, "jcifs.http.enableBasic"

    invoke-static {v0, v4}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljcifs/http/NetworkExplorer;->enableBasic:Z

    const-string v0, "jcifs.http.insecureBasic"

    invoke-static {v0, v4}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljcifs/http/NetworkExplorer;->insecureBasic:Z

    const-string v0, "jcifs.http.basicRealm"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/http/NetworkExplorer;->realm:Ljava/lang/String;

    if-nez v0, :cond_75

    const-string v0, "jCIFS"

    iput-object v0, p0, Ljcifs/http/NetworkExplorer;->realm:Ljava/lang/String;

    :cond_75
    const-string v0, "jcifs.smb.client.domain"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/http/NetworkExplorer;->defaultDomain:Ljava/lang/String;

    const-string v0, "jcifs.util.loglevel"

    invoke-static {v0, v5}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_88

    invoke-static {v0}, Ljcifs/util/LogStream;->setLevel(I)V

    :cond_88
    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_94

    :try_start_8d
    sget-object v0, Ljcifs/http/NetworkExplorer;->log:Ljcifs/util/LogStream;

    const-string v1, "JCIFS PROPERTIES"

    invoke-static {v0, v1}, Ljcifs/Config;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_94} :catch_94

    :catch_94
    :cond_94
    return-void

    :cond_95
    :try_start_95
    new-instance v5, Ljava/lang/String;

    const-string v6, "ISO8859_1"

    invoke-direct {v5, v1, v4, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_9f} :catch_a0

    goto :goto_49

    :catch_a0
    move-exception v0

    new-instance v1, Ljavax/servlet/ServletException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_ab
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "jcifs."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {p0, v3}, Ljcifs/http/NetworkExplorer;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_1b
.end method
